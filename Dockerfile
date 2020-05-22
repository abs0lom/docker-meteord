FROM node:12.16.1-buster-slim

LABEL maintainer="abs0lom<olivier@make-it.fr>"

ENV METEOR_ALLOW_SUPERUSER true
ENV APP_SOURCE_DIR /opt/meteor/src
ENV APP_BUNDLE_DIR /opt/meteor/dist
ENV BUILD_SCRIPTS_DIR /opt/

# Meteor runtime variable
ENV PORT 3000
ENV ROOT_URL http://localhost
ENV MONGO_URL mongodb://127.0.0.1:27017/meteor
ENV METEOR_SETTINGS {}

COPY scripts $BUILD_SCRIPTS_DIR
RUN chmod -R 750 $BUILD_SCRIPTS_DIR

ONBUILD COPY . $APP_SOURCE_DIR

ONBUILD RUN cd $APP_SOURCE_DIR \
  && $BUILD_SCRIPTS_DIR/install.sh \
  && $BUILD_SCRIPTS_DIR/build.sh \
  && $BUILD_SCRIPTS_DIR/cleanup.sh

EXPOSE 3000

WORKDIR $APP_BUNDLE_DIR/bundle

CMD $BUILD_SCRIPTS_DIR/run.sh
