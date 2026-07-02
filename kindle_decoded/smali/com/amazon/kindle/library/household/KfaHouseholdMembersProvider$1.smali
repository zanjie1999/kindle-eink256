.class final Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider$1;
.super Ljava/lang/Object;
.source "KfaHouseholdMembersProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider$1;->this$0:Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider$1;->this$0:Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;->triggerGetAllUsersRefresh()V

    return-void
.end method
