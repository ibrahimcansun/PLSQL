DECLARE
   l_two_months_ago   DATE :=   ADD_MONTHS (TRUNC (SYSDATE, 'MONTH'), -2) + (EXTRACT (DAY FROM SYSDATE) - 1);
   l_two_months_later     DATE :=   ADD_MONTHS (TRUNC (SYSDATE, 'MONTH'), 2) + (EXTRACT (DAY FROM SYSDATE) - 1);
   v_text         VARCHAR2 (100);
BEGIN
   v_text := 'Two months ago: ' || TO_CHAR (l_two_months_ago, 'DD.MM.YYYY')
      || ', today date: ' || TO_CHAR (SYSDATE, 'DD.MM.YYYY')
      || ', two months later: ' || TO_CHAR (l_two_months_later, 'DD.MM.YYYY');
   DBMS_OUTPUT.PUT_LINE (v_text);
END;
