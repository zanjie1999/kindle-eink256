.class final Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "BookEntityShovelerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->onBindViewHolder(Lcom/amazon/kcp/home/widget/BookViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $coverId:Ljava/lang/String;

.field final synthetic $item:Lcom/amazon/kindle/home/model/BookEntity;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;->$item:Lcom/amazon/kindle/home/model/BookEntity;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;->$coverId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;->$item:Lcom/amazon/kindle/home/model/BookEntity;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;->$coverId:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$onCoverClicked(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Landroid/view/View;Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;)V

    return-void
.end method
