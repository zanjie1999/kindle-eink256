.class public Lcom/amazon/kindle/db/Batch;
.super Ljava/lang/Object;
.source "Batch.java"


# static fields
.field private static final SQL_BATCH_SIZE:I = 0x190

.field private static SQL_BATCH_WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field private final bindArgs:[Ljava/lang/String;

.field private final whereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " IN (?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    const-string v2, ", ?"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/db/Batch;->SQL_BATCH_WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/db/Batch;->whereClause:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/db/Batch;->bindArgs:[Ljava/lang/String;

    return-void
.end method

.method public static generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/db/Batch;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_1

    new-array p2, v1, [Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    :goto_1
    if-nez p4, :cond_2

    const-string p4, ""

    goto :goto_2

    .line 59
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 62
    :goto_2
    array-length v2, p0

    const/16 v3, 0x190

    if-le v2, v3, :cond_3

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/db/Batch;->SQL_BATCH_WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    array-length v4, p1

    add-int/2addr v4, v3

    array-length v5, p2

    add-int/2addr v4, v5

    new-array v5, v4, [Ljava/lang/String;

    .line 65
    array-length v6, p1

    invoke-static {p1, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    array-length v6, p1

    add-int/2addr v6, v3

    array-length v7, p2

    invoke-static {p2, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    :goto_3
    add-int/lit16 v7, v6, 0x190

    .line 67
    array-length v8, p0

    if-ge v7, v8, :cond_4

    .line 68
    array-length v8, p1

    invoke-static {p0, v6, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    new-array v6, v4, [Ljava/lang/String;

    .line 70
    invoke-static {v5, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    new-instance v8, Lcom/amazon/kindle/db/Batch;

    invoke-direct {v8, v2, v6}, Lcom/amazon/kindle/db/Batch;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v7

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 77
    :cond_4
    array-length v2, p0

    sub-int/2addr v2, v6

    if-lez v2, :cond_6

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, " IN (?"

    .line 80
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, v6, 0x1

    .line 81
    :goto_4
    array-length v4, p0

    if-ge p3, v4, :cond_5

    const-string v4, ", ?"

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_5
    const-string p3, ")"

    .line 84
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    array-length p3, p1

    add-int/2addr p3, v2

    array-length p4, p2

    add-int/2addr p3, p4

    new-array p3, p3, [Ljava/lang/String;

    .line 87
    array-length p4, p1

    invoke-static {p1, v1, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    array-length p4, p1

    add-int/2addr p4, v2

    array-length v4, p2

    invoke-static {p2, v1, p3, p4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    array-length p1, p1

    invoke-static {p0, v6, p3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    new-instance p0, Lcom/amazon/kindle/db/Batch;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/db/Batch;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getBindArgs()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/db/Batch;->bindArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/db/Batch;->whereClause:Ljava/lang/String;

    return-object v0
.end method
