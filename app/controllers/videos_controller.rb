class VideosController < ApplicationController
    # コントローラーのアクションに対応するviewファイルを作成するときは、ファイル名も合わせるようにしないとエラーが出る。
    def new
        @video = Video.new
    end
    
    def create
        @video = Video.new(video_params)
        @video.create
        redirect_to @video
    end
    
    def show
        @video = Video.find(params[:id])
    end
    
    private
    
    def video_params
        params.require(:video).permit(:title, :introduction, :video)
    end
end
