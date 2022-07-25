class TodosController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def getAllTodos

      todoList =  Todo.all

      render :json=>todoList

    end

    def createTodo

        todoItem = {

            "title" => params[:title]

        }

        todo = Todo.new(todoItem)

        todo.save

        render :json=>todo

    end
    def getByID

        id = params[:id].to_i

        begin
        todo = Todo.find(id)

        render :json=>todo
        end

    rescue
        render :json=>"falseID"

    end

    def deleteTodo

        id = params[:id].to_i
        Todo.delete(id)
        render :json=>"delete"
    end

    def updateTodo

        # render :json=>Todo.find(params[:id].to_i)
        id = params[:id].to_i
        todo = Todo.find(id)
        todo.title = params[:title]
        todo.save
        render :json=>todo
    end


end

