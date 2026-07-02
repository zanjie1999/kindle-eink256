.class public final Lcom/audible/relationship/domain/SyncMapping;
.super Ljava/lang/Object;
.source "SyncMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/relationship/domain/SyncMapping$Builder;,
        Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;,
        Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;,
        Lcom/audible/relationship/domain/SyncMapping$EBookStep;
    }
.end annotation


# instance fields
.field private final aBookAcr:Lcom/audible/mobile/domain/ACR;

.field private final aBookAsin:Lcom/audible/mobile/domain/Asin;

.field private final eBookAsin:Lcom/audible/mobile/domain/Asin;

.field private final eBookGuid:Lcom/audible/mobile/domain/GUID;

.field private final syncFileAcr:Lcom/audible/mobile/domain/ACR;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eBookGuid can\'t be null."

    .line 54
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/domain/GUID;

    iput-object p1, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    const-string p1, "aBookAcr can\'t be null."

    .line 55
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/domain/ACR;

    iput-object p2, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    const-string p1, "eBookAsin can\'t be null."

    .line 56
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/domain/Asin;

    iput-object p3, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "aBookAsin can\'t be null."

    .line 57
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/mobile/domain/Asin;

    iput-object p4, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "syncFileAcr can\'t be null."

    .line 58
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/mobile/domain/ACR;

    iput-object p5, p0, Lcom/audible/relationship/domain/SyncMapping;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/relationship/domain/SyncMapping$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/audible/relationship/domain/SyncMapping;-><init>(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    return-void
.end method

.method public static newBuilder()Lcom/audible/relationship/domain/SyncMapping$EBookStep;
    .locals 2

    .line 68
    new-instance v0, Lcom/audible/relationship/domain/SyncMapping$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/relationship/domain/SyncMapping$Builder;-><init>(Lcom/audible/relationship/domain/SyncMapping$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 132
    const-class v1, Lcom/audible/relationship/domain/SyncMapping;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    check-cast p1, Lcom/audible/relationship/domain/SyncMapping;

    .line 138
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    iget-object v2, p1, Lcom/audible/relationship/domain/SyncMapping;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    iget-object v2, p1, Lcom/audible/relationship/domain/SyncMapping;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p1, Lcom/audible/relationship/domain/SyncMapping;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p1, Lcom/audible/relationship/domain/SyncMapping;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    iget-object p1, p1, Lcom/audible/relationship/domain/SyncMapping;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public getAudiobookAcr()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getEbookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getEbookGuid()Lcom/audible/mobile/domain/GUID;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    return-object v0
.end method

.method public getSyncFileAcr()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 160
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 161
    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncMapping{eBookGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aBookAcr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eBookAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aBookAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncFileAcr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/SyncMapping;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
