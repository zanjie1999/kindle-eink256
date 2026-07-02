.class public Lcom/amazon/kindle/content/LocalContent;
.super Ljava/lang/Object;
.source "LocalContent.java"


# instance fields
.field filePath:Ljava/lang/String;

.field fileSize:J

.field guid:Ljava/lang/String;

.field isEncrypted:Z

.field lastModified:J

.field ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field watermark:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentOwnershipType;J)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/content/LocalContent;->filePath:Ljava/lang/String;

    .line 50
    iput-wide p2, p0, Lcom/amazon/kindle/content/LocalContent;->lastModified:J

    .line 51
    iput-object p4, p0, Lcom/amazon/kindle/content/LocalContent;->guid:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/amazon/kindle/content/LocalContent;->watermark:Ljava/lang/String;

    .line 53
    iput-boolean p6, p0, Lcom/amazon/kindle/content/LocalContent;->isEncrypted:Z

    .line 54
    iput-object p7, p0, Lcom/amazon/kindle/content/LocalContent;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 55
    iput-wide p8, p0, Lcom/amazon/kindle/content/LocalContent;->fileSize:J

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/content/LocalContent;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/content/LocalContent;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/content/LocalContent;->watermark:Ljava/lang/String;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/amazon/kindle/content/LocalContent;->isEncrypted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "{file path="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/LocalContent;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", last modified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/content/LocalContent;->lastModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", guid="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/LocalContent;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/LocalContent;->watermark:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/amazon/kindle/content/LocalContent;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", ownershipType="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/LocalContent;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", fileSize="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/content/LocalContent;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
