#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <algorithm>
#include <set>
#include <cassert>
using namespace std;

struct Node
{
   Node *next;
   Node *prev;
   int value;
   int key;
   Node(Node *p, Node *n, int k, int val) : prev(p), next(n), key(k), value(val){};
   Node(int k, int val) : prev(NULL), next(NULL), key(k), value(val){};
};

class Cache
{

protected:
   map<int, Node *> mp;            // map the key to the node in the linked list
   int cp;                         // capacity
   Node *tail;                     // double linked list tail pointer
   Node *head;                     // double linked list head pointer
   virtual void set(int, int) = 0; // set function
   virtual int get(int) = 0;       // get function
};

class LRUCache : public Cache
{
private:
   void addToFront(Node *node)
   {
      node->next = head->next;
      node->prev = head;
      head->next->prev = node;
      head->next = node;
   }

   void removeNode(Node *node)
   {
      node->prev->next = node->next;
      node->next->prev = node->prev;
   }

   void moveToHead(Node *node)
   {
      removeNode(node);
      addToFront(node);
   }

   Node *removeTail()
   {
      Node *tailNode = tail->prev;
      removeNode(tailNode);
      return tailNode;
   }

public:
   LRUCache(int cp)
   {
      this->cp = cp;
      head = new Node(-1, -1); // Dummy head node
      tail = new Node(-1, -1); // Dummy tail node
      head->next = tail;
      tail->prev = head;
   }

   void set(int k, int v)
   {
      if (mp.find(k) != mp.end())
      {
         Node *node = mp[k];
         node->value = v;
         moveToHead(node);
      }
      else
      {
         if (mp.size() >= cp)
         {
            Node *tailNode = removeTail();
            mp.erase(tailNode->key);
            delete tailNode;
         }
         Node *newNode = new Node(k, v);
         mp[k] = newNode;
         addToFront(newNode);
      }
   }

   int get(int k)
   {
      if (mp.find(k) != mp.end())
      {
         Node *node = mp[k];
         moveToHead(node);
         return node->value;
      }
      return -1;
   }
};

int main()
{
   int n, capacity, i;
   cin >> n >> capacity;
   LRUCache l(capacity);
   for (i = 0; i < n; i++)
   {
      string command;
      cin >> command;
      if (command == "get")
      {
         int key;
         cin >> key;
         cout << l.get(key) << endl;
      }
      else if (command == "set")
      {
         int key, value;
         cin >> key >> value;
         l.set(key, value);
      }
   }
   return 0;
}