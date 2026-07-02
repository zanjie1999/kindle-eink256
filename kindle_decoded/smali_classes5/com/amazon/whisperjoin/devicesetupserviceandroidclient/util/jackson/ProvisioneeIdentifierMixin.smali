.class public interface abstract Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/ProvisioneeIdentifierMixin;
.super Ljava/lang/Object;
.source "ProvisioneeIdentifierMixin.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    value = {
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            value = Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            value = Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    property = "__type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation
