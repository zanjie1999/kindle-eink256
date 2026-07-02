.class final Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MissingCoverLoadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/MissingCoverLoadManager;->parseContentMetadata(Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function5<",
        "Landroid/database/Cursor;",
        "Lcom/amazon/kindle/content/ContentMetadataField;",
        "Ljava/util/Set<",
        "+",
        "Lcom/amazon/kindle/content/ContentMetadataField;",
        ">;",
        "Ljava/util/Map<",
        "Lcom/amazon/kindle/content/ContentMetadataField;",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;->INSTANCE:Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic invoke$default(Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;Landroid/database/Cursor;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p5, ""

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;->invoke(Landroid/database/Cursor;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Lcom/amazon/kindle/content/ContentMetadataField;

    check-cast p3, Ljava/util/Set;

    check-cast p4, Ljava/util/Map;

    check-cast p5, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;->invoke(Landroid/database/Cursor;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Landroid/database/Cursor;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "properties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :try_start_0
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 114
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-string p1, ""

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p5
.end method
