.class public final Lcom/amazon/ea/guava/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/guava/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/amazon/ea/guava/Objects$1;)V

    iput-object v0, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->holderHead:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    .line 32
    iput-object v0, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->holderTail:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    .line 40
    invoke-static {p1}, Lcom/amazon/ea/guava/Objects;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/ea/guava/Objects$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 252
    new-instance v0, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/amazon/ea/guava/Objects$1;)V

    .line 253
    iget-object v1, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->holderTail:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->next:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->holderTail:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->addHolder()Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 265
    iput-object p2, v0, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 266
    invoke-static {p1}, Lcom/amazon/ea/guava/Objects;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 0

    .line 92
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 0

    .line 105
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 0

    .line 118
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 0

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 234
    iget-boolean v0, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->omitNullValues:Z

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    iget-object v2, p0, Lcom/amazon/ea/guava/Objects$ToStringHelper;->holderHead:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    iget-object v2, v2, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->next:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    .line 238
    iget-object v4, v2, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 239
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v3, v2, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    iget-object v3, v2, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 237
    :cond_2
    iget-object v2, v2, Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;->next:Lcom/amazon/ea/guava/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
