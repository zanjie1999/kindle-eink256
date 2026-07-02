.class public final Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager$1;
.super Ljava/lang/Object;
.source "LibrarySharedFilterRegistrationManager.kt"

# interfaces
.implements Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;-><init>(Lcom/amazon/kindle/library/household/HouseholdMembersProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager$1;->this$0:Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userIdToUsers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager$1;->this$0:Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->updateHouseholdMemberMap(Ljava/util/Map;)V

    return-void
.end method
