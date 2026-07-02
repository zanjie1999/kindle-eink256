.class final Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;
.super Ljava/lang/Object;
.source "BaseHouseholdMembersProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->postGetUsersCallback(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $householdMemberMap:Ljava/util/Map;

.field final synthetic $usersCallback:Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;->$usersCallback:Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;

    iput-object p2, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;->$householdMemberMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;->$usersCallback:Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;

    iget-object v1, p0, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider$postGetUsersCallback$1;->$householdMemberMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;->callback(Ljava/util/Map;)V

    return-void
.end method
