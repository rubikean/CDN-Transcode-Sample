apiVersion: v1
kind: Service
metadata:
  labels:
    app: kafka-service
  name: kafka-service
spec:
  ports:
  - name: "9092"
    port: 9092
    targetPort: 9092
  selector:
    app: kafka-service
  type: NodePort
