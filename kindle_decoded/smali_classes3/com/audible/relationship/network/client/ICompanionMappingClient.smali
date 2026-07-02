.class public interface abstract Lcom/audible/relationship/network/client/ICompanionMappingClient;
.super Ljava/lang/Object;
.source "ICompanionMappingClient.java"


# virtual methods
.method public abstract getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/ACR;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract requestFullCompanionMapping(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipMapping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract requestMappingForAsinPairs(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipMapping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
