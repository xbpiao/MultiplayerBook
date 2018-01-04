# shell脚本所在目录
current_dir="$( cd "$( dirname "$0" )" && pwd )"

if [[ -f "${current_dir}/RoboCatActionClient" ]] ; then
	# otool -L RoboCatActionClient 查看原*.dylib的路径

	# 文件存在则处理	
    # install_name_tool -change /usr/local/lib/libSDL2_ttf-2.0.0.dylib ${current_dir}/libSDL2_ttf-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change /usr/local/lib/libSDL2-2.0.0.dylib ${current_dir}/libSDL2-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change /usr/local/lib/libSDL2_image-2.0.0.dylib ${current_dir}/libSDL2_image-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change /usr/local/lib/libfreetype.6.dylib ${current_dir}/libfreetype.6.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change /usr/local/lib/libpng16.16.dylib ${current_dir}/libpng16.16.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change /usr/local/lib/libSDL2_mixer-2.0.0.dylib ${current_dir}/libSDL2_mixer-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    
    # install_name_tool -change @executable_path/libSDL2_ttf-2.0.0.dylib ${current_dir}/libSDL2_ttf-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change @executable_path/libSDL2-2.0.0.dylib ${current_dir}/libSDL2-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change @executable_path/libSDL2_image-2.0.0.dylib ${current_dir}/libSDL2_image-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change @executable_path/libfreetype.6.dylib ${current_dir}/libfreetype.6.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change @executable_path/libpng16.16.dylib ${current_dir}/libpng16.16.dylib "${current_dir}/RoboCatActionClient"
    # install_name_tool -change @executable_path/libSDL2_mixer-2.0.0.dylib ${current_dir}/libSDL2_mixer-2.0.0.dylib "${current_dir}/RoboCatActionClient"

    install_name_tool -change @executable_path/libSDL2_ttf-2.0.0.dylib /usr/local/lib/libSDL2_ttf-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    install_name_tool -change @executable_path/libSDL2-2.0.0.dylib /usr/local/lib/libSDL2-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    install_name_tool -change @executable_path/libSDL2_image-2.0.0.dylib /usr/local/lib/libSDL2_image-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    install_name_tool -change @executable_path/libfreetype.6.dylib /usr/local/lib/libfreetype.6.dylib "${current_dir}/RoboCatActionClient"
    install_name_tool -change @executable_path/libpng16.16.dylib /usr/local/lib/libpng16.16.dylib "${current_dir}/RoboCatActionClient"
    install_name_tool -change @executable_path/libSDL2_mixer-2.0.0.dylib /usr/local/lib/libSDL2_mixer-2.0.0.dylib "${current_dir}/RoboCatActionClient"
    
    # "${current_dir}/RoboCatActionClient"
fi

if [[ -f "${current_dir}/RoboCatActionServer" ]] ; then
    install_name_tool -change @executable_path/libSDL2_ttf-2.0.0.dylib /usr/local/lib/libSDL2_ttf-2.0.0.dylib "${current_dir}/RoboCatActionServer"
    install_name_tool -change @executable_path/libSDL2-2.0.0.dylib /usr/local/lib/libSDL2-2.0.0.dylib "${current_dir}/RoboCatActionServer"
    install_name_tool -change @executable_path/libSDL2_image-2.0.0.dylib /usr/local/lib/libSDL2_image-2.0.0.dylib "${current_dir}/RoboCatActionServer"

fi