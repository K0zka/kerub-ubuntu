SRC=https://codeload.github.com/K0zka/kerub/zip/master
VERSION=master
NAME=kerub

all: $(NAME)-$(VERSION).deb

src.zip:
	curl $(SRC) -o src.zip

$(NAME)-$(VERSION).deb: $(NAME)-$(VERSION)
	dpkg-buildpackage

$(NAME)-$(VERSION): src.zip
	unzip -u src.zip

clean:
	rm -rf src.zip $(NAME)-$(VERSION)


