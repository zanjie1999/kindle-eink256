.class public Lcom/amazon/kindle/model/content/UpsellBookID;
.super Ljava/lang/Object;
.source "UpsellBookID.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IBookID;


# static fields
.field private static final DIVIDER:Ljava/lang/String; = "/"

.field private static final SERIALIZED_PREFIX:Ljava/lang/String; = "UPSELLID0"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final serializedForm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/model/content/UpsellBookID;->asin:Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPSELLID0/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/model/content/UpsellBookID;->asin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/model/content/UpsellBookID;->serializedForm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/model/content/UpsellBookID;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedForm()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/model/content/UpsellBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
