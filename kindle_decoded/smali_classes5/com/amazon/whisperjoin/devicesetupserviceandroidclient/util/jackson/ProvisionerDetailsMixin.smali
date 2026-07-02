.class public interface abstract Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/ProvisionerDetailsMixin;
.super Ljava/lang/Object;
.source "ProvisionerDetailsMixin.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    value = {
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            value = Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    property = "__type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation
