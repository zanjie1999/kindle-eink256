.class public interface abstract Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;
.super Ljava/lang/Object;
.source "MetricsTransport.java"


# static fields
.field public static final CLIENT_ERROR:I = 0x3

.field public static final CREDENTIALS_ERROR:I = 0x5

.field public static final EMPTY_DATA_ERROR:I = 0x8

.field public static final FAILURE:I = -0x1

.field public static final ILLEGAL_ACCESS_ERROR:I = 0xb

.field public static final IO_ERROR:I = 0xa

.field public static final NETWORK_ERROR:I = 0x2

.field public static final NO_RESPONSE_ERROR:I = 0xc

.field public static final NO_USABLE_CONNECTION:I = 0x7

.field public static final REQUEST_FAILED_ERROR:I = 0x9

.field public static final SERVER_ERROR:I = 0x4

.field public static final SUCCESS:I = 0x1

.field public static final UNEXPECTED_ERROR:I = 0x6


# virtual methods
.method public abstract close()V
.end method

.method public abstract transmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;)I
.end method
