# TransEA [1]

This is an implementation of the paper [Knowledge Graph Embedding with Numeric Attributes of Entities](http://www.aclweb.org/anthology/W18-3017) .

These codes base on TransE [2] and [TensorFlow-TransX](https://github.com/thunlp/TensorFlow-TransX)


# Data

Datasets are required in the following format:

- triple2id.txt: training file, the first line is the number of triples for training. Then the follow lines are all in the format (e1, e2, rel).

- valid2id.txt: the same format as triple2id.txt

- test2id.txt: the same format as triple2id.txt

- entity2id.txt: all entities and corresponding ids, one per line. The first line is the number of entities.

- relation2id.txt: all relations and corresponding ids, one per line. The first line is the number of relations.

- attr2id.txt: all numeric attributes and corresponding ids. The first line is the number of attribute relation.

- attrm2id.txt: attributive triplets, the first line is the number of attributive triplets. Format (e, a, v), v is normalized by Max-Min method.


# Compile

bash makeEA.sh

# Train

To train models based on random initialization:

1. Change class Config in transX.py

		class Config(object):
	
			def __init__(self):
				...
				lib.setInPath("your training data path...")
				self.testFlag = False
				self.loadFromData = False
				...

2. python transE/transEA.py

# Test

To test your models:

1. Change class Config in transX.py
	
		class Config(object):

			def __init__(self):
				...
				test_lib.setInPath("your testing data path...")
				self.testFlag = True
				self.loadFromData = True
				...

2. python transE/transEA.py



# Citation

If you use the code or datasets, please kindly cite the papers listed in our reference.

# Reference
[1] Yanrong Wu, Zhichun Wang. Knowledge Graph Embedding with Numeric Attributes of Entities. Proceedings of The Third Workshop on Representation Learning for NLP. 2018.

[2] Bordes, Antoine, et al. Translating embeddings for modeling multi-relational data. Proceedings of NIPS, 2013.

[3] Yankai Lin, Zhiyuan Liu, et al. Learning Entity and Relation Embeddings for Knowledge Graph Completion. Proceedings of AAAI, 2015.

