.class public interface abstract Lcom/amazon/kindle/krx/application/IUserAccount;
.super Ljava/lang/Object;
.source "IUserAccount.java"


# static fields
.field public static final ACCOUNT_ROLE_ADULT:Ljava/lang/String; = "ADULT"

.field public static final ACCOUNT_ROLE_CHILD:Ljava/lang/String; = "CHILD"

.field public static final KEY_ACCOUNT_ROLE:I = 0x3

.field public static final KEY_COUNTRY_OF_RESIDENCE:I = 0x2

.field public static final KEY_PREFERRED_MARKETPLACE:I = 0x1


# virtual methods
.method public abstract allowsFeedback()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract allowsSharing()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAccountProperty(I)Ljava/lang/String;
.end method

.method public abstract getCountryOfResidence()Ljava/lang/String;
.end method

.method public abstract getPFMDomain()Ljava/lang/String;
.end method

.method public abstract getPreferredMarketplace()Ljava/lang/String;
.end method

.method public abstract getUserEmail()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract isAuthenticated()Z
.end method
