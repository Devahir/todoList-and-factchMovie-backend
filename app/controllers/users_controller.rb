class UsersController < ActionController::Base
    def index
        user= [
            {name:'devdatta',
            rollNumber:34,
            standet: 2
        },
        {name:'abhiyan',
            rollNumber:24,
            standet:3
        },
        {name:'messi',
            rollNumber:1,
            standet:4
        },
        {name:'akash',
            rollNumber:4,
            standet:5
        }
        ]

        limit = params[:limit].to_i
        # if(!limit.nil?&&limit<user.length){
        #     render:json => user.take(limit)
        # }
        # end

        render:json => limit
    end

    def getById

        id=(params[:user_id]).to_i

        user= [
            {name:'devdatta',
            rollNumber:34,
            standet:2
        },
        {name:'abhiyan',
            rollNumber:24,
            standet:3
        },
        {name:'messi',
            rollNumber:1,
            standet:4
        },
        {name:'akash',
            rollNumber:4,
            standet:5
        }
        ]

        
        if(id>=user.length) 
            render :json => "No User by this Id"
        else
            render :json => user[id]
        end
    end

    def getNusers
        limit = (params[:limit_x]).to_i

        render :json => "hey you got it"
    end



end