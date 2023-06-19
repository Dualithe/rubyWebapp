[1mdiff --git a/app/controllers/book_copies_controller.rb b/app/controllers/book_copies_controller.rb[m
[1mindex 69d2aa2..f97591e 100644[m
[1m--- a/app/controllers/book_copies_controller.rb[m
[1m+++ b/app/controllers/book_copies_controller.rb[m
[36m@@ -1,4 +1,5 @@[m
 class BookCopiesController < ApplicationController[m
[32m+[m[32m  before_action :authenticate_user!, only: [ :show, :edit, :update, :destroy, :create][m
   before_action :set_book_copy, only: %i[ show edit update destroy ][m
 [m
   # GET /book_copies or /book_copies.json[m
[1mdiff --git a/app/controllers/borrowings_controller.rb b/app/controllers/borrowings_controller.rb[m
[1mindex 3d804e3..35e700d 100644[m
[1m--- a/app/controllers/borrowings_controller.rb[m
[1m+++ b/app/controllers/borrowings_controller.rb[m
[36m@@ -1,4 +1,5 @@[m
 class BorrowingsController < ApplicationController[m
[32m+[m[32m  before_action :authenticate_user!, only: [ :edit, :update, :destroy][m
   before_action :set_borrowing, only: %i[ show edit update destroy ][m
 [m
   # GET /borrowings or /borrowings.json[m
[1mdiff --git a/app/controllers/librarians_controller.rb b/app/controllers/librarians_controller.rb[m
[1mindex 5dd3d24..11acf25 100644[m
[1m--- a/app/controllers/librarians_controller.rb[m
[1m+++ b/app/controllers/librarians_controller.rb[m
[36m@@ -1,4 +1,5 @@[m
 class LibrariansController < ApplicationController[m
[32m+[m[32m  before_action :authenticate_user!, only: [ :edit, :update, :destroy, :create][m
   before_action :set_librarian, only: %i[ show edit update destroy ][m
 [m
   # GET /librarians or /librarians.json[m
[1mdiff --git a/app/controllers/libraries_controller.rb b/app/controllers/libraries_controller.rb[m
[1mindex 223764a..7f8779d 100644[m
[1m--- a/app/controllers/libraries_controller.rb[m
[1m+++ b/app/controllers/libraries_controller.rb[m
[36m@@ -1,4 +1,5 @@[m
 class LibrariesController < ApplicationController[m
[32m+[m[32m  before_action :authenticate_user!, only: [ :edit, :update, :destroy, :create][m
   before_action :set_library, only: %i[ show edit update destroy ][m
 [m
   # GET /libraries or /libraries.json[m
[1mdiff --git a/app/controllers/readers_controller.rb b/app/controllers/readers_controller.rb[m
[1mindex 8aa76b1..6b1cf37 100644[m
[1m--- a/app/controllers/readers_controller.rb[m
[1m+++ b/app/controllers/readers_controller.rb[m
[36m@@ -1,4 +1,5 @@[m
 class ReadersController < ApplicationController[m
[32m+[m[32m  before_action :authenticate_user!, only: [ :edit, :update, :destroy, :create][m
   before_action :set_reader, only: %i[ show edit update destroy ][m
 [m
   # GET /readers or /readers.json[m
[1mdiff --git a/app/controllers/static_controller.rb b/app/controllers/static_controller.rb[m
[1mindex 8d4ce93..c6df11e 100644[m
[1m--- a/app/controllers/static_controller.rb[m
[1m+++ b/app/controllers/static_controller.rb[m
[36m@@ -1,8 +1,2 @@[m
 class StaticController < ApplicationController[m
[31m-    @@counter = 0[m
[31m-[m
[31m-    def index[m
[31m-        @@counter += 1[m
[31m-        render plain: @@counter[m
[31m-    end[m
 end[m
[1mdiff --git a/app/models/reader.rb b/app/models/reader.rb[m
[1mindex af6d6cc..04edde0 100644[m
[1m--- a/app/models/reader.rb[m
[1m+++ b/app/models/reader.rb[m
[36m@@ -1,4 +1,4 @@[m
 class Reader < ApplicationRecord[m
   has_many :borrowings[m
[31m-  belongs_to :user[m
[32m+[m[32m  belongs_to :user, optional: true[m
 end[m
[1mdiff --git a/config/importmap.rb b/config/importmap.rb[m
[1mindex ba2a323..8820ea9 100644[m
[1m--- a/config/importmap.rb[m
[1m+++ b/config/importmap.rb[m
[36m@@ -5,5 +5,5 @@[m [mpin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true[m
 pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true[m
 pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true[m
 pin_all_from "app/javascript/controllers", under: "controllers"[m
[31m-pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.2.3/dist/js/bootstrap.esm.js"[m
[32m+[m[32mpin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.0/dist/js/bootstrap.esm.js"[m
 pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex 10bbd34..aa5104e 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -7,6 +7,7 @@[m [mRails.application.routes.draw do[m
   resources :users[m
   resources :books[m
   resources :libraries[m
[32m+[m[32m  resources :static[m
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html[m
    root "static#index"[m
   get '/time', to: 'time#index'[m
