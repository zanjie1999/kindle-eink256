.class Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel$1;
.super Ljava/lang/Object;
.source "KRIFBookItem.java"

# interfaces
.implements Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->getStringValueFromMetadata(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;Ljava/lang/String;)V
    .locals 0

    .line 1455
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/Object;
    .locals 0

    .line 1455
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel$1;->get(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel$1;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/krf/platform/KRFBookInfo;->createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
