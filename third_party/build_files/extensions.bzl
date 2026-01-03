load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def _non_module_deps_impl(ctx):
    git_repository(
        name = "glfw",
        remote = "https://github.com/glfw/glfw.git",
        commit = "7b6aead9fb88b3623e3b3725ebb42670cbe4c579",
        build_file = "//third_party/build_files:glfw.bazel",
    )
    git_repository(
        name = "soloud",
        remote = "https://github.com/jarikomppa/soloud.git",
        commit = "c8e339fdce5c7107bdb3e64bbf707c8fd3449beb",
        build_file = "//third_party/build_files:soloud.bazel",
    )
    git_repository(
        name = "stackwalker",
        remote = "https://github.com/JochenKalmbach/StackWalker.git",
        commit = "5b0df7a4db8896f6b6dc45d36e383c52577e3c6b",
        build_file = "//third_party/build_files:stackwalker.bazel",
    )
    git_repository(
        name = "tinyfiledialogs",
        remote = "https://github.com/native-toolkit/libtinyfiledialogs.git",
        tag = "2.9.3",
        build_file = "//third_party/build_files:tinyfiledialogs.bazel",
    )
    git_repository(
        name = "minizip",
        remote = "https://github.com/domoticz/minizip.git",
        commit = "aee7fbddf118d9363575af96310c29fa747d70c0",
        build_file = "//third_party/build_files:minizip.bazel",
    )
    git_repository(
        name = "flatbuffers",
        remote = "https://github.com/google/flatbuffers.git",
        tag = "v25.9.23",
        # build_file = "//third_party/build_files:flatbuffers.bazel",
    )

non_module_deps = module_extension(
    implementation = _non_module_deps_impl,
)