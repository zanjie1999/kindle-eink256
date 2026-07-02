.class public Lcom/amazon/sitb/android/utils/RoleUtils;
.super Ljava/lang/Object;
.source "RoleUtils.java"


# direct methods
.method public static isChildRole(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CHILD"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
