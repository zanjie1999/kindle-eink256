.class final Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;
.super Ljava/lang/Object;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncableEntry"
.end annotation


# static fields
.field private static sExplodeNoisily:Z = true


# instance fields
.field private mConflictValue:Ljava/lang/String;

.field private mHasConflict:Z

.field private mIsDeleted:Z

.field private mIsDirty:Z

.field private final mKey:Ljava/lang/String;

.field private mServerSyncCount:J

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/Record;Z)V
    .locals 2

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mKey:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mServerSyncCount:J

    .line 257
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    .line 258
    iput-boolean p2, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDirty:Z

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/Record;ZLjava/lang/String;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Lcom/amazon/whispersync/Record;Z)V

    .line 266
    iput-object p3, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mKey:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 245
    iput-wide p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mServerSyncCount:J

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    .line 247
    iput-boolean p3, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDirty:Z

    .line 248
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    return-void
.end method

.method private static checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V
    .locals 2

    .line 366
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unlocked access"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "Sync"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    sget-boolean p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->sExplodeNoisily:Z

    if-nez p0, :cond_1

    return-void

    .line 371
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asConflict()Lcom/amazon/device/sync/Conflict;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 357
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 358
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->hasConflict()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "not a conflict (TOCTOU?)"

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    new-instance v3, Lcom/amazon/device/sync/Conflict;

    iget-object v4, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v4, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/amazon/device/sync/Conflict;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v3
.end method

.method public asWhispersyncRecord()Lcom/amazon/whispersync/Record;
    .locals 3

    .line 272
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 273
    new-instance v0, Lcom/amazon/whispersync/Record;

    invoke-direct {v0}, Lcom/amazon/whispersync/Record;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setKey(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setValue(Ljava/lang/String;)V

    .line 276
    iget-boolean v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setIsDeleted(Z)V

    .line 277
    iget-wide v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mServerSyncCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setServerSyncCount(Ljava/lang/Long;)V

    return-object v0
.end method

.method public delete()Ljava/lang/String;
    .locals 2

    .line 337
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 339
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    .line 342
    iput-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    const/4 v1, 0x1

    .line 343
    iput-boolean v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    .line 344
    iput-boolean v1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDirty:Z

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .line 317
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 318
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Deleted value accessed"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hasConflict()Z
    .locals 1

    .line 351
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 352
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 311
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 312
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    :goto_0
    return v0
.end method

.method public isDirty()Z
    .locals 1

    .line 283
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 284
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDirty:Z

    return v0
.end method

.method public setConflictValue(Ljava/lang/String;)V
    .locals 0

    .line 295
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 296
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    return-void
.end method

.method public setIsDirty(Z)V
    .locals 0

    .line 289
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 290
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDirty:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 324
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 325
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDirty:Z

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    .line 330
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mHasConflict:Z

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mConflictValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public update(Lcom/amazon/whispersync/Record;)V
    .locals 4

    .line 302
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->checkLocked(Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)V

    .line 303
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDirty()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Dirty value accessed"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mValue:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mIsDeleted:Z

    .line 306
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->mServerSyncCount:J

    return-void
.end method
