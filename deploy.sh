# Open folder in git bash shell and run ./deploy.sh
echo "Exporting to docs folder"
./hugo.exe -d docs
git add -A
read -p "Enter a commit message: " message
echo "Message confirmed"
git commit -m "$message"
git push
echo "Deploy Completed"