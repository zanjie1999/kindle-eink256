.class Lcom/audible/relationship/domain/SyncMapping$Builder;
.super Ljava/lang/Object;
.source "SyncMapping.java"

# interfaces
.implements Lcom/audible/relationship/domain/SyncMapping$EBookStep;
.implements Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;
.implements Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/relationship/domain/SyncMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private aBookAcr:Lcom/audible/mobile/domain/ACR;

.field private aBookAsin:Lcom/audible/mobile/domain/Asin;

.field private eBookAsin:Lcom/audible/mobile/domain/Asin;

.field private eBookGuid:Lcom/audible/mobile/domain/GUID;

.field private syncFileAcr:Lcom/audible/mobile/domain/ACR;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/relationship/domain/SyncMapping$1;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/audible/relationship/domain/SyncMapping$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public audiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;
    .locals 1

    const-string v0, "aAsin can\'t be null."

    .line 245
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    iput-object p1, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "aACR can\'t be null."

    .line 246
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/domain/ACR;

    iput-object p2, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    return-object p0
.end method

.method public eBook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;)Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;
    .locals 1

    const-string v0, "eAsin can\'t be null."

    .line 236
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    iput-object p1, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "eGuid can\'t be null."

    .line 237
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/domain/GUID;

    iput-object p2, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    return-object p0
.end method

.method public syncFile(Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping;
    .locals 8

    const-string v0, "syncAcr can\'t be null."

    .line 254
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/audible/mobile/domain/ACR;

    iput-object v6, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->syncFileAcr:Lcom/audible/mobile/domain/ACR;

    .line 255
    new-instance p1, Lcom/audible/relationship/domain/SyncMapping;

    iget-object v2, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->eBookGuid:Lcom/audible/mobile/domain/GUID;

    iget-object v3, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->aBookAcr:Lcom/audible/mobile/domain/ACR;

    iget-object v4, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v5, p0, Lcom/audible/relationship/domain/SyncMapping$Builder;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/audible/relationship/domain/SyncMapping;-><init>(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/relationship/domain/SyncMapping$1;)V

    return-object p1
.end method
