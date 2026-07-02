.class Lcom/amazon/android/autocomplete/TernarySearchTree$Node;
.super Ljava/lang/Object;
.source "TernarySearchTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/autocomplete/TernarySearchTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field data:C

.field isEndOfWord:Z

.field left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

.field middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

.field right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

.field weight:I


# direct methods
.method private constructor <init>(CI)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p2, p0, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->weight:I

    .line 250
    iput-char p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->data:C

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->isEndOfWord:Z

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->right:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    iput-object p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->middle:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    iput-object p1, p0, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;->left:Lcom/amazon/android/autocomplete/TernarySearchTree$Node;

    return-void
.end method

.method synthetic constructor <init>(CILcom/amazon/android/autocomplete/TernarySearchTree$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree$Node;-><init>(CI)V

    return-void
.end method
