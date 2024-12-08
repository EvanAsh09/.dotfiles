linux: clean
	./bin/linux.sh

clean:
	./bin/cleanup.sh

chmod:
	chmod +x ./bin/linux.sh ./bin/cleanup.sh

