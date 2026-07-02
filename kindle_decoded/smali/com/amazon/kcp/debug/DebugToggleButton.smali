.class public final Lcom/amazon/kcp/debug/DebugToggleButton;
.super Ljava/lang/Object;
.source "DebugToggleButton.kt"


# instance fields
.field private final debugClassName:Ljava/lang/String;

.field private final debugFieldName:Ljava/lang/String;

.field private final id:I

.field private isChecked:Z

.field private final sharedPrefKey:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final toastMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPrefKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugClassName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugFieldName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toastMsg"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->id:I

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->title:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    iput-object p4, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->sharedPrefKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugClassName:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugFieldName:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->toastMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/debug/DebugToggleButton;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/debug/DebugToggleButton;

    iget v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->id:I

    iget v1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->sharedPrefKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->sharedPrefKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugClassName:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->debugClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugFieldName:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->debugFieldName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->toastMsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugToggleButton;->toastMsg:Ljava/lang/String;

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

.method public final getDebugClassName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebugFieldName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->id:I

    return v0
.end method

.method public final getSharedPrefKey()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->sharedPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getToastMsg()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->toastMsg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->sharedPrefKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugFieldName:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->toastMsg:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    return v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugToggleButton(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sharedPrefKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", debugClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", debugFieldName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->debugFieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugToggleButton;->toastMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
