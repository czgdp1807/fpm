#!/bin/bash

set -ex

wget -O fpm https://github.com/fortran-lang/fpm/releases/download/v0.7.0/fpm-0.7.0-linux-x86_64
chmod +x fpm
./fpm build --show-model

mkdir -p build/lfortran_BC003944AE0DF3D6/fpm/
lfortran --no-warnings -c ././src/fpm_strings.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_strings.f90.o
lfortran -c ././src/fpm_backend_console.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_backend_console.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/constants.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_constants.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/version.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_version.f90.o
lfortran --no-warnings -c build/dependencies/M_CLI2/src/M_CLI2.F90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_M_CLI2_src_M_CLI2.f90.o
lfortran --no-warnings -c ././src/fpm/error.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_error.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/error.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_error.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/datetime.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_datetime.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/utils/verify.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_utils_verify.f90.o
lfortran --no-warnings -c ././src/fpm_environment.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_environment.f90.o
lfortran -c ././src/fpm_os.F90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_os.F90.o
lfortran -c ././src/fpm/versioning.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_versioning.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/utils/convert.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_utils_convert.f90.o
lfortran --no-warnings -c ././src/fpm_filesystem.F90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_filesystem.F90.o
lfortran -c build/dependencies/toml-f/src/tomlf/utils.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_utils.f90.o
lfortran --no-warnings -c ././src/fpm_command_line.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_command_line.f90.o
lfortran -c ././src/fpm/installer.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_installer.f90.o
lfortran -c ././src/fpm/git.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_git.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/type/value.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_type_value.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/utils/sort.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_utils_sort.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/type/keyval.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_type_keyval.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/structure/base.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_structure_base.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/structure/vector.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_structure_vector.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/structure.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_structure.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/type/table.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_type_table.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/type/array.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_type_array.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/type.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_type.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/ser.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_ser.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/de/tokenizer.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_de_tokenizer.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/build/merge.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_build_merge.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/build/keyval.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_build_keyval.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/de/character.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_de_character.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/build/table.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_build_table.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/build/array.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_build_array.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/de.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_de.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf/build.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf_build.f90.o
lfortran -c build/dependencies/toml-f/src/tomlf.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/build_dependencies_toml-f_src_tomlf.f90.o
lfortran -c ././src/fpm/toml.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_toml.f90.o
lfortran --no-warnings -c ././src/fpm/manifest/profiles.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_profiles.f90.o
lfortran -c ././src/fpm/manifest/install.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_install.f90.o
lfortran -c ././src/fpm/manifest/preprocess.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_preprocess.f90.o
lfortran -c ././src/fpm/manifest/build.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_build.f90.o
lfortran -c ././src/fpm/manifest/dependency.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_dependency.f90.o
lfortran -c ././src/fpm/manifest/library.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_library.f90.o
lfortran --no-warnings -c ././src/fpm/manifest/executable.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_executable.f90.o
lfortran --no-warnings -c ././src/fpm/manifest/test.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_test.f90.o
lfortran --no-warnings -c ././src/fpm/manifest/example.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_example.f90.o
lfortran --no-warnings -c ././src/fpm/manifest/package.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest_package.f90.o
lfortran --no-warnings -c ././src/fpm/manifest.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_manifest.f90.o
lfortran --no-warnings -c ././src/fpm/cmd/new.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_cmd_new.f90.o
lfortran --no-warnings -c ././src/fpm_compiler.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_compiler.f90.o
lfortran -c ././src/fpm/dependency.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_dependency.f90.o
lfortran -c ././src/fpm_model.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_model.f90.o
lfortran -c ././src/fpm/cmd/update.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_cmd_update.f90.o
lfortran --no-warnings -c ././src/fpm_source_parsing.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_source_parsing.f90.o
lfortran -c ././src/fpm_targets.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_targets.f90.o
lfortran -c ././src/fpm_backend_output.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_backend_output.f90.o
lfortran --no-warnings -c ././src/fpm_sources.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_sources.f90.o
lfortran -c ././src/fpm_backend.F90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_backend.F90.o
lfortran --no-warnings -c ././src/fpm.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm.f90.o
lfortran -c ././src/fpm/cmd/install.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/src_fpm_cmd_install.f90.o
#lfortran -c app/main.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 -o build/lfortran_BC003944AE0DF3D6/fpm/app_main.f90.o
lfortran --show-asr --no-color app/main.f90  --cpp -J build/lfortran_BC003944AE0DF3D6 -Ibuild/lfortran_BC003944AE0DF3D6 > main.asr

head -c 2000 main.asr
