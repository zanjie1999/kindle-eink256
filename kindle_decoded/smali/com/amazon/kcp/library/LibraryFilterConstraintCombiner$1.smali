.class final Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;
.super Lcom/amazon/kcp/library/LibraryContentFilter;
.source "LibraryFilterConstraintCombiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

.field final synthetic val$filterConstraint1:Lcom/amazon/kcp/library/LibraryContentFilter;

.field final synthetic val$filterConstraint2:Lcom/amazon/kcp/library/LibraryContentFilter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;ZLcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 0

    .line 129
    iput-object p8, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    iput-object p9, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint1:Lcom/amazon/kcp/library/LibraryContentFilter;

    iput-object p10, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint2:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryContentFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 4

    .line 132
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$2;->$SwitchMap$com$amazon$kcp$library$LibraryFilterConstraintCombiner$CombinationType:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint1:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint2:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint1:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint2:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public shouldGroupSeries()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint1:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->shouldGroupSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;->val$filterConstraint2:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->shouldGroupSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
