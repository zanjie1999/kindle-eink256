.class public final Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;
.super Ljava/lang/Object;
.source "ItemSimilaritiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final m_imageUri:Ljava/lang/String;

.field private final m_title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;->m_title:Ljava/lang/String;

    .line 46
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;->m_imageUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method writeToPipe(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;->m_title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;->m_imageUri:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
