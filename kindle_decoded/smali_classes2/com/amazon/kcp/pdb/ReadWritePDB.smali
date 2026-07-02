.class public Lcom/amazon/kcp/pdb/ReadWritePDB;
.super Ljava/lang/Object;
.source "ReadWritePDB.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dirty:Z

.field private final idToRecordLookup:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final privComparator:Lcom/amazon/kcp/pdb/RecordComparator;

.field private final privIdentifier:Ljava/lang/String;

.field private privNextIdNumber:I

.field private final privPDBFactory:Lcom/amazon/kcp/pdb/PDBFactory;

.field private final privPDBName:Ljava/lang/String;

.field private final privType:Ljava/lang/String;

.field private final records:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/pdb/ReadWritePDB;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/pdb/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/pdb/RecordComparator;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadWritePDB.<init>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privIdentifier:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBFactory:Lcom/amazon/kcp/pdb/PDBFactory;

    .line 64
    iput-object p3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBName:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privType:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privComparator:Lcom/amazon/kcp/pdb/RecordComparator;

    .line 67
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    .line 68
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->reload()V

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privNextIdNumber:I

    return-void
.end method

.method private createHeader()[B
    .locals 12

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->getRecordCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x50

    new-array v2, v0, [B

    .line 293
    sget-object v3, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privType:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TYPE MUST HAVE 4 LETTERS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 294
    sget-object v3, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBName:Ljava/lang/String;

    const/16 v8, 0x20

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PDBNAME MUST BE SHORTER THAN 32 LETTERS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v4, v9}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 296
    array-length v4, v3

    if-le v4, v8, :cond_2

    goto :goto_2

    :cond_2
    array-length v8, v3

    .line 297
    :goto_2
    invoke-static {v3, v6, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x24

    const/16 v4, 0x25

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    .line 300
    aput-byte v8, v2, v3

    const/16 v3, 0x26

    shr-int/lit8 v9, v1, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 301
    aput-byte v9, v2, v4

    const/16 v4, 0x27

    shr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 302
    aput-byte v10, v2, v3

    const/16 v3, 0x28

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 303
    aput-byte v1, v2, v4

    .line 304
    sget-object v4, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    const-string v11, "ERROR"

    invoke-static {v4, v7, v11}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v4, 0x29

    .line 305
    aput-byte v8, v2, v3

    const/16 v3, 0x2a

    .line 306
    aput-byte v9, v2, v4

    const/16 v4, 0x2b

    .line 307
    aput-byte v10, v2, v3

    .line 308
    aput-byte v1, v2, v4

    .line 309
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v3, 0x3c

    .line 310
    invoke-static {v1, v6, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "MOBI"

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v3, 0x40

    .line 312
    invoke-static {v1, v6, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x44

    const/16 v3, 0x45

    .line 314
    iget v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privNextIdNumber:I

    shr-int/lit8 v8, v4, 0x18

    int-to-byte v8, v8

    aput-byte v8, v2, v1

    const/16 v1, 0x46

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 315
    aput-byte v8, v2, v3

    const/16 v3, 0x47

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 316
    aput-byte v8, v2, v1

    and-int/lit16 v1, v4, 0xff

    int-to-byte v1, v1

    .line 317
    aput-byte v1, v2, v3

    const/16 v1, 0x4c

    .line 319
    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/16 v4, 0x4d

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 320
    aput-byte v8, v2, v1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 321
    aput-byte v1, v2, v4

    .line 323
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 324
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const/16 v8, 0x4e

    if-eqz v4, :cond_4

    .line 325
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 326
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 327
    iget-object v10, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    invoke-virtual {v10, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v6

    mul-int/lit8 v10, v4, 0x8

    add-int/2addr v10, v8

    .line 329
    sget-object v8, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    if-ge v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-static {v8, v4, v11}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v4, v10, 0x1

    shr-int/lit8 v8, v9, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 331
    aput-byte v8, v2, v10

    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 332
    aput-byte v10, v2, v4

    and-int/lit16 v4, v9, 0xff

    int-to-byte v4, v4

    .line 333
    aput-byte v4, v2, v8

    goto :goto_3

    :cond_4
    :goto_5
    if-ge v6, v3, :cond_5

    add-int/lit8 v1, v8, 0x1

    shr-int/lit8 v4, v0, 0x18

    int-to-byte v4, v4

    .line 339
    aput-byte v4, v2, v8

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 340
    aput-byte v7, v2, v1

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 341
    aput-byte v7, v2, v4

    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    .line 342
    aput-byte v7, v2, v1

    add-int/lit8 v8, v4, 0x4

    .line 344
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    return-object v2
.end method

.method private load(Lcom/amazon/kcp/pdb/ReadPDB;)V
    .locals 10

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->clearData()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    .line 81
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kcp/pdb/ReadPDB;->getHeader()[B

    move-result-object v1

    .line 83
    sget-object v2, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getPDBName([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Strange, header name mismatch!"

    invoke-static {v2, v3, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getPDBName([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 85
    iput-boolean v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    .line 87
    :cond_0
    sget-object v2, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getType([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Strange, header type mismatch!"

    invoke-static {v2, v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getType([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iput-boolean v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    .line 90
    :cond_1
    invoke-static {v1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getNextRecordID([B)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privNextIdNumber:I

    .line 91
    invoke-static {v1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getRecordCount([B)I

    move-result v2

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nbRecords : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    new-array v5, v3, [I

    aput v4, v5, v0

    .line 97
    invoke-static {v1, v4}, Lcom/amazon/kcp/pdb/PDBUtilities;->getID([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 98
    sget-object v7, Lcom/amazon/kcp/pdb/ReadWritePDB;->TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const-string v9, "Multiple records with same ID!!!"

    invoke-static {v7, v8, v9}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    iget-object v7, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    invoke-virtual {v7, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v5, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-interface {p1, v4}, Lcom/amazon/kcp/pdb/ReadPDB;->getRecord(I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :catch_0
    invoke-direct {p0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->clearData()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addRecord([B)I
    .locals 6

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    .line 262
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privComparator:Lcom/amazon/kcp/pdb/RecordComparator;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 266
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privComparator:Lcom/amazon/kcp/pdb/RecordComparator;

    iget-object v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v3, v4, p1}, Lcom/amazon/kcp/pdb/RecordComparator;->compare([B[B)I

    move-result v3

    if-ge v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 269
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 270
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 271
    aget v5, v4, v2

    if-lt v5, v1, :cond_2

    .line 272
    aget v5, v4, v2

    add-int/2addr v5, v0

    aput v5, v4, v2

    goto :goto_1

    .line 276
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v3, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    new-array p1, v0, [I

    aput v1, p1, v2

    .line 279
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->idToRecordLookup:Ljava/util/Hashtable;

    iget v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privNextIdNumber:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privNextIdNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget p1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privNextIdNumber:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getRecord(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getRecordCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public modifyRecord([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public reload()V
    .locals 3

    const/4 v0, 0x1

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBFactory:Lcom/amazon/kcp/pdb/PDBFactory;

    iget-object v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privIdentifier:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/pdb/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/amazon/kcp/pdb/ReadPDB;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    .line 125
    iput-boolean v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    return-void

    .line 130
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/pdb/ReadWritePDB;->load(Lcom/amazon/kcp/pdb/ReadPDB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    .line 136
    iput-boolean v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    .line 139
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kcp/pdb/ReadPDB;->close()V

    return-void
.end method

.method public save()Z
    .locals 5

    .line 355
    iget-boolean v0, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    if-eqz v0, :cond_2

    .line 356
    invoke-direct {p0}, Lcom/amazon/kcp/pdb/ReadWritePDB;->createHeader()[B

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privPDBFactory:Lcom/amazon/kcp/pdb/PDBFactory;

    iget-object v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->privIdentifier:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/pdb/PDBFactory;->getWritePDB(Ljava/lang/String;[B)Lcom/amazon/kcp/pdb/WritePDB;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 363
    iget-object v4, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->records:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v0, v4}, Lcom/amazon/kcp/pdb/WritePDB;->addRecord([B)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kcp/pdb/WritePDB;->close()V

    .line 366
    iput-boolean v1, p0, Lcom/amazon/kcp/pdb/ReadWritePDB;->dirty:Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
