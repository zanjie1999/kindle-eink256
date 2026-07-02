.class public final Lcom/google/common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$1;)V

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 138
    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    .locals 2

    .line 358
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$1;)V

    .line 359
    iget-object v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1

    .line 364
    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 365
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1

    .line 370
    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 371
    iput-object p2, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 372
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 198
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 218
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 228
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 178
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 239
    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    return-object p0
.end method

.method public omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 331
    iget-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    iget-object v2, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v2, v2, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 337
    iget-object v4, v2, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 339
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v3, v2, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 347
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 336
    :cond_3
    iget-object v2, v2, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 354
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
