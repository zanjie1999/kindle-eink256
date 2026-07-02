.class public interface abstract Lcom/amazon/kindle/library/household/HouseholdMembersProvider;
.super Ljava/lang/Object;
.source "HouseholdMembersProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;
    }
.end annotation


# virtual methods
.method public abstract setAndUseUpdateHouseholdMembersCallback(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;)V
.end method

.method public abstract triggerGetAllUsersRefresh()V
.end method
