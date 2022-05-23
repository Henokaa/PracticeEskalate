import {
  Body,
  Controller,
  Delete,
  Get,
  HttpStatus,
  Param,
  Patch,
  Post,
  Res,
} from '@nestjs/common';
import { Public } from '../auth/constants';
import { UserService } from './user.service';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Public()
  @Get('/all')
  getAllUser() {
    return this.userService.getAllUser();
  }

  @Public()
  @Post()
  createUser(
    @Body('username') username: string,
    @Body('firstName') firstName: string,
    @Body('lastName') lastName: string,
    @Body('password') password: string,
  ) {
    return this.userService.createUser(username, firstName, lastName, password);
  }
  @Get(':id')
  getUserById(@Param('id') id: string) {
    return this.userService.getUserById(id);
  }
  @Patch(':id')
  updateUser(
    @Param('id') userId: string,
    @Body('username') username: string,
    @Body('firstName') firstName: string,
    @Body('lastName') lastName: string,
    @Body('password') password: string,
  ) {
    return this.userService.updateUser(
      userId,
      username,
      firstName,
      lastName,
      password,
    );
  }
  @Delete(':id')
  deleteUser(@Param('id') userId: string) {
    return this.userService.deleteUser(userId);
  }
}
