.class public interface abstract Lcom/amazon/identity/auth/device/z;
.super Ljava/lang/Object;
.source "DCP"


# virtual methods
.method public abstract N(Ljava/lang/String;)Z
.end method

.method public abstract a(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;I)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
.end method

.method public abstract b(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end method

.method public abstract b(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract z()Ljava/lang/String;
.end method
