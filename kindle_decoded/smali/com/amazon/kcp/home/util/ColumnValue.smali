.class Lcom/amazon/kcp/home/util/ColumnValue;
.super Ljava/lang/Object;
.source "HomeDatabaseUtils.kt"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/util/ColumnValue;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getName()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/home/util/ColumnValue;->name:Ljava/lang/String;

    return-object v0
.end method
