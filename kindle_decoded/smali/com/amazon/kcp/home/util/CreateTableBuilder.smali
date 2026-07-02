.class public final Lcom/amazon/kcp/home/util/CreateTableBuilder;
.super Ljava/lang/Object;
.source "HomeDatabaseUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeDatabaseUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeDatabaseUtils.kt\ncom/amazon/kcp/home/util/CreateTableBuilder\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,392:1\n13506#2,2:393\n*E\n*S KotlinDebug\n*F\n+ 1 HomeDatabaseUtils.kt\ncom/amazon/kcp/home/util/CreateTableBuilder\n*L\n325#1,2:393\n*E\n"
.end annotation


# instance fields
.field private final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/util/ColumnValue;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final primaryKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->name:Ljava/lang/String;

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->primaryKeys:Ljava/util/List;

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->columns:Ljava/util/List;

    return-void
.end method

.method private final addTextColumn(Ljava/lang/String;Z)Lcom/amazon/kcp/home/util/CreateTableBuilder;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->columns:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/home/util/TextValue;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/util/TextValue;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public final addBooleanColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;
    .locals 2

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->columns:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/home/util/BooleanValue;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/home/util/BooleanValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addIntegerColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;
    .locals 2

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->columns:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/home/util/IntValue;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/home/util/IntValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addNullableTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;Z)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    return-object p0
.end method

.method public final addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;Z)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    return-object p0
.end method

.method public final build()Ljava/lang/String;
    .locals 12

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->columns:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRIMARY KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->primaryKeys:Ljava/util/List;

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(\"CREATE TA\u2026(\")\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final varargs setPrimaryKeys([Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;
    .locals 4

    const-string/jumbo v0, "names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 325
    iget-object v3, p0, Lcom/amazon/kcp/home/util/CreateTableBuilder;->primaryKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
