ARG STRYKER_VERSION

FROM ghcr.io/stryker-mutator/github-action:main as Stryker.NET

FROM ${STRYKER_VERSION} as final
ENTRYPOINT ["/entrypoint.sh"]
