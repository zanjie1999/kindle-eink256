.class Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;
.super Ljava/lang/Object;
.source "LibraryFilterConstraintCombiner.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterPredicate"
.end annotation


# instance fields
.field private final combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

.field private final predicate1:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

.field private final predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate1:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 279
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 280
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 305
    const-class v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;

    .line 311
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate1:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate1:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 312
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 313
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 314
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 319
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate1:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 320
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 321
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 322
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate1:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 292
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->combinationType:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    sget-object v4, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 295
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;->predicate2:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method
