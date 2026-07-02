.class Lcom/amazon/android/autocomplete/TernarySearchTree;
.super Ljava/lang/Object;
.source "TernarySearchTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/autocomplete/TernarySearchTree$Node;
    }
.end annotation


# instance fields
.field private root:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

.field private size:I

.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->size:I

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->root:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    return-void
.end method

.method private contains(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 221
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    if-ge v1, v2, :cond_1

    .line 222
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/autocomplete/TernarySearchTree;->contains(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 223
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    if-le v1, v2, :cond_2

    .line 224
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/autocomplete/TernarySearchTree;->contains(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 226
    :cond_2
    iget-boolean v1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->isEndOfWord:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_3

    return v2

    .line 228
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_4

    return v0

    .line 231
    :cond_4
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    add-int/2addr p3, v2

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/autocomplete/TernarySearchTree;->contains(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private getListFromTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/autocomplete/TernarySearchTree$Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree;->traverseTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->suggestions:Ljava/util/List;

    new-instance p2, Lcom/amazon/android/autocomplete/TernarySearchTree$1;

    invoke-direct {p2, p0}, Lcom/amazon/android/autocomplete/TernarySearchTree$1;-><init>(Lcom/amazon/android/autocomplete/TernarySearchTree;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->suggestions:Ljava/util/List;

    return-object p1
.end method

.method private getWordSuggestions(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/autocomplete/TernarySearchTree$Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-char v4, v0, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 124
    iget-char v5, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    if-ge v4, v5, :cond_0

    .line 125
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    goto :goto_1

    :cond_0
    if-le v4, v5, :cond_1

    .line 127
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    goto :goto_1

    .line 129
    :cond_1
    iget v3, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->weight:I

    .line 130
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->suggestions:Ljava/util/List;

    .line 139
    invoke-virtual {p0, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->suggestions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree;->getListFromTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private insert(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;II)Lcom/amazon/android/autocomplete/TernarySearchTree$Node;
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 80
    new-instance p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, p3, v2}, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;-><init>(CILcom/amazon/android/autocomplete/TernarySearchTree$1;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    if-ge v2, v3, :cond_1

    .line 85
    iget-object v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/android/autocomplete/TernarySearchTree;->insert(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;II)Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    move-result-object p2

    iput-object p2, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    if-le v2, v3, :cond_2

    .line 87
    iget-object v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/android/autocomplete/TernarySearchTree;->insert(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;II)Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    move-result-object p2

    iput-object p2, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    goto :goto_1

    :cond_2
    add-int/2addr p4, v0

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p4, v2, :cond_3

    .line 90
    iget-object v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/android/autocomplete/TernarySearchTree;->insert(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;II)Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    move-result-object p2

    iput-object p2, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 93
    iput p3, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->weight:I

    .line 95
    :cond_4
    iput-boolean v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->isEndOfWord:Z

    :goto_1
    return-object p1
.end method

.method private traverseTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, v0, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree;->traverseTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p2, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 188
    iget-boolean v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->isEndOfWord:Z

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Landroidx/core/util/Pair;

    iget v1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->weight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->suggestions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    iget-object v0, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, v0, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree;->traverseTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 196
    iget-object p1, p1, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree;->traverseTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->root:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/android/autocomplete/TernarySearchTree;->contains(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method getWordSuggestions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->root:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/autocomplete/TernarySearchTree;->getWordSuggestions(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method insert(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->root:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/amazon/android/autocomplete/TernarySearchTree;->insert(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;II)Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->root:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    .line 66
    iget p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree;->size:I

    :cond_1
    :goto_0
    return-void
.end method
