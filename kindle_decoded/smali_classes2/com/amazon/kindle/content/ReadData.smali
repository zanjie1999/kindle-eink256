.class public final Lcom/amazon/kindle/content/ReadData;
.super Ljava/lang/Object;
.source "ReadData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;
    }
.end annotation


# instance fields
.field private readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field private readStateOrigin:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/content/ReadData;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 41
    iput-object p2, p0, Lcom/amazon/kindle/content/ReadData;->readStateOrigin:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    return-void
.end method


# virtual methods
.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/content/ReadData;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object v0
.end method

.method public getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/content/ReadData;->readStateOrigin:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    return-object v0
.end method

.method public setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/content/ReadData;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-void
.end method

.method public setReadStateOrigin(Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/content/ReadData;->readStateOrigin:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    return-void
.end method
