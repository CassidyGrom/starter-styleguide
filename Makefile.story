PHONY: github aws-assets aws-htmljs aws-cache pudding client

github:
	rm -rf docs
	cp -r dist/ docs
	git add -A
	git commit -m "update dev version"
	git push

archive:
	zip -r archive.zip dev
	git add -A
	git commit -m "archive"
	git push

client:
	npm run depudding

# aws-assets:
# 	aws s3 sync dist s3://projects.nj.com/investigations/yourProject --delete --cache-control 'max-age=36000' --exclude 'index.html' --exclude 'bundle.js'

# aws-htmljs:
#	aws s3 cp dist/index.html s3://projects.nj.com/investigations/yourProject/index.html
#	aws s3 cp dist/bundle.js s3://projects.nj.com/investigations/yourProject/bundle.js

# aws-cache:
# 	aws cloudfront create-invalidation --distribution-id E2ECJQFLC2RUT0 --paths '/investigations/Joyce*'

# njamdata: aws-assets aws-htmljs aws-cache archive
