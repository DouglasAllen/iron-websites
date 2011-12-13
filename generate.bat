@echo off
pushd %~dp0
python %~dp0generate.py -python
python %~dp0generate.py -ruby
rmdir /s /q %~dp0deploy
ruby %~dp0deploy.rb
popd
