.class Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/utils/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final rh:Ljava/lang/Class;

.field private final ri:Ljava/lang/String;

.field private final rj:[Ljava/lang/Class;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rh:Ljava/lang/Class;

    .line 26
    iput-object p2, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->ri:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rj:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 49
    const-class v2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;

    .line 55
    iget-object v2, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->ri:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->ri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rj:[Ljava/lang/Class;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rj:[Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rh:Ljava/lang/Class;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rh:Ljava/lang/Class;

    .line 56
    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/ic;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rh:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v2, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->ri:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-object v1, p0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;->rj:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
