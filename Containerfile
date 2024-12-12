FROM alpine as builder
COPY data.txt /tmp/data.txt
RUN echo "something" > /tmp/data.txt

FROM fedora as final
COPY --from=builder /tmp/data.txt /

 
