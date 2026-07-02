TARGET := TruthTable.jar

build: clean
	patch -p1 < diff.patch 
	mkdir build
	cp -r audio/ examples/ fonts/ help/ images/ license/ application.properties build/
	javac -d build $(shell find ./ -name "*.java")
	cd build/ && jar cfe ../$(TARGET) Application . && cd ..

clean:
	patch -R -f --no-backup-if-mismatch --reject-file=- -p1 < diff.patch > /dev/null 2> /dev/null || true
	rm -rf build

distclean: clean
	rm -f $(TARGET)

fix_permissions:
	find -type d -exec chmod 755 {} \;
	find -type f -exec chmod 644 {} \;

