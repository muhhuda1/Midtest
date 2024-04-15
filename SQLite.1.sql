SELECT item
FROM item_bought
GROUP BY item
HAVING COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
   AND COUNT(item) != (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) ASC LIMIT 1);
