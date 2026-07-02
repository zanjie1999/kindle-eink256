.class public Lcom/amazon/identity/auth/device/hk$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private qn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 196
    iput v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qo:I

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 184
    iput v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qo:I

    .line 185
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 190
    iget-object v2, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/identity/auth/device/hk$a;->qo:I

    if-lt v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk$a;->qn:Ljava/util/LinkedList;

    return-object v0
.end method
