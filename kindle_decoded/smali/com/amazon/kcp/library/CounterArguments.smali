.class public final Lcom/amazon/kcp/library/CounterArguments;
.super Ljava/lang/Object;
.source "LargeLibraryCounterProviderImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;


# instance fields
.field private final modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

.field private final modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V
    .locals 1

    const-string/jumbo v0, "modelContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/CounterArguments;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p2, p0, Lcom/amazon/kcp/library/CounterArguments;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/CounterArguments;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/CounterArguments;

    iget-object v0, p0, Lcom/amazon/kcp/library/CounterArguments;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v1, p1, Lcom/amazon/kcp/library/CounterArguments;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/CounterArguments;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object p1, p1, Lcom/amazon/kcp/library/CounterArguments;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterArguments;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    return-object v0
.end method

.method public final getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterArguments;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/library/CounterArguments;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/CounterArguments;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CounterArguments(modelContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/CounterArguments;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modelFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/CounterArguments;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
