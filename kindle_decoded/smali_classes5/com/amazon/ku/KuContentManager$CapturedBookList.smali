.class Lcom/amazon/ku/KuContentManager$CapturedBookList;
.super Ljava/lang/Object;
.source "KuContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/KuContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapturedBookList"
.end annotation


# instance fields
.field private books:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "books"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/amazon/ku/KuContentManager$CapturedBookList;->books:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager$CapturedBookList;->books:Ljava/util/List;

    return-object v0
.end method
