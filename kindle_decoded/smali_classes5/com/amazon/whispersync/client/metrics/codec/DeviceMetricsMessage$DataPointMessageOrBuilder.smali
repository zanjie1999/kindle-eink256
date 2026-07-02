.class public interface abstract Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataPointMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSampleSize()I
.end method

.method public abstract getType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasSampleSize()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasValue()Z
.end method
