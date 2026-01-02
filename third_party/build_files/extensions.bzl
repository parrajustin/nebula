load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def _non_module_deps_impl(ctx):
    git_repository(
        name = "glfw",
        remote = "https://github.com/glfw/glfw.git",
        commit = "7b6aead9fb88b3623e3b3725ebb42670cbe4c579",
        # This points to the BUILD file you created in the previous step
        # "//:glfw.BUILD" assumes the file is in your root directory.
        # If it is in third_party, use "//third_party:glfw.BUILD"
        build_file = "//third_party/build_files:glfw.bazel",
    )
    git_repository(
        name = "soloud",
        remote = "https://github.com/jarikomppa/soloud.git",
        commit = "c8e339fdce5c7107bdb3e64bbf707c8fd3449beb",
        # This points to the BUILD file you created in the previous step
        # "//:glfw.BUILD" assumes the file is in your root directory.
        # If it is in third_party, use "//third_party:glfw.BUILD"
        build_file = "//third_party/build_files:soloud.bazel",
    )

non_module_deps = module_extension(
    implementation = _non_module_deps_impl,
)