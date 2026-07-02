.class final Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;
.super Ljava/lang/Object;
.source "LibraryItemsCountCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryItemsCountCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private final groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final originId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 140
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 141
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->originId:Ljava/lang/String;

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

    .line 150
    const-class v0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    check-cast p1, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;

    .line 156
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 158
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->originId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->originId:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 160
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object p1

    .line 156
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

    .line 165
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 166
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 167
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;->originId:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 169
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
